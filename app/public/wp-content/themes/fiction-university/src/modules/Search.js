import $ from 'jquery';
class Search {
  constructor() {
	this.addSearchHTML();
	this.openButton = $(".js-search-trigger");
	this.closeButton = $(".search-overlay__close");
	this.searchoverlay = $(".search-overlay");
	this.searchField = $('#search-term');
	this.searchResults = $('#search-overlay-results');
	this.events();
	this.isOverlayState = false;
	this.SpinnerVisible = false;
	this.previousValue;
	
	this.typingTimer;
  }
  
  events(){
	this.openButton.on("click",this.openOverlay.bind(this));
	this.closeButton.on("click",this.closeOverlay.bind(this));
	$(document).on("keydown",this.keyPressDispatcher.bind(this));
	this.searchField.on("keyup",this.searchInputLogic.bind(this));
  }
  
  searchInputLogic()
  {
	if(this.searchField.val() != this.previousValue)
		{
			clearTimeout(this.typingTimer);
			if(this.searchField.val())
				{
					if(!this.isSpinnerVisible)
						{
							this.searchResults.html("<div class='spinner-loader'></div>")
							this.isSpinnerVisible = true;
						}
				    this.typingTimer = setTimeout(this.getResults.bind(this),750);	
				}else{
					this.searchResults.html('');
					this.isSpinnerVisible = false;
				}
				
			
		}
	
	 this.previousValue = this.searchField.val();
  }
  
  getResults()
  {
	$.getJSON(universityData.root_url+'/wp-json/university/v1/search?keyword=' + this.searchField.val(),(results) => {
		
		this.searchResults.html(`
		 <div class="row">
		 	<div class="one-third">
				<h2 class="search-overlay__section-title">General Information</h2>
				${results.generalInfo.length ? `<ul class="link-list min-list">
							${results.generalInfo.map(item => `<li><a href="${item.permalink}">
							${item.title}</a> ${ item.postType =='post'?`by ${item.authorName} ` : ''} </li>`).join('')}</ul>`
								 :'<p>No results found</p>'}
			</div>
			<div class=""one-third">
				<h2 class="search-overlay__section-title">Programs</h2>
				${results.programs.length ? `<ul class="link-list min-list">
											${results.programs.map(item => `<li><a href="${item.permalink}">
											${item.title}</a>  </li>`).join('')}</ul>`
					 :`<p>No results found.<a href="${universityData.root_url}/programs}">View All Our Programs</a></p>`}
					 
					 
				<h2 class="search-overlay__section-title">Professors</h2>
				
				${results.professors.length ? `<ul class="professor-cards">
															${results.professors.map(item => `
				<li class="professor-card__list-item" >
				<a class="professor-card" href="${item.permalink}">
				<img class="professor-card__image" src="${item.image}">   
				<span class="professor-card__name">${item.title}</span>
				</a>
				</li>`).join('')}</ul>`
									 :'<p>No results found</p>'}			
				
			</div>
			<div class=""one-third">
				<h2 class="search-overlay__section-title">Campus</h2>
				${results.campus.length ? `<ul class="link-list min-list">
															${results.campus.map(item => `<li><a href="${item.permalink}">
															${item.title}</a>  </li>`).join('')}</ul>`
									 :`<p>No results found.<a href="${universityData.root_url}/Campuses}">View All Our Campus</a></p>`}
				<h2 class="search-overlay__section-title">Events</h2>
				${results.events.length ? `<ul class="link-list min-list">
						${results.events.map(item => `
						
				<div class="event-summary">
				         <a class="event-summary__date t-center" href="${item.permalink}">
		           <span class="event-summary__month">
						${item.month}									           
			         </span>
			    <span class="event-summary__day">${item.day}</span>
			  </a>
				 <div class="event-summary__content">
				  <h5 class="event-summary__title headline headline--tiny">
					   <a href="${item.permalink}">${item.title}</a></h5>
							  <p>${item.description }
						     <a href="${item.permalink}" class="nu gray">Read more</a></p>
				    </div>
					  </div>													
															
															`).join('')}</ul>`
									 :`<p>No results found.<a href="${universityData.root_url}/events}">View All Our Events</a></p>`}
			</div>
		 
		 
		 </div>
		
		`);
		this.SpinnerVisible = false;
	});

	
  }
  
  openOverlay()
  {
	this.searchoverlay.addClass("search-overlay--active");
	$('body').addClass('body-no-scroll');
	this.searchField.val('');
	setTimeout(()=>this.searchField.focus(),301);
	this.isOverlayState = true;
	
	return false;
	
  }
  
  
  closeOverlay()
  {
	this.searchoverlay.removeClass("search-overlay--active");
	$('body').removeClass('body-no-scroll');
	this.isOverlayState = false;
  }
  
  
  keyPressDispatcher(e)
    {
  	
  	if(e.keyCode == 83 && !this.isOverlayState && !$("input, textarea").is(':focus'))
  		{
  			this.openOverlay();
  		}
  	if(e.keyCode == 27 && this.isOverlayState )
  		{
  			this.closeOverlay();
  		}
    }
	
	addSearchHTML()
	{
		$('body').append(`		<div class="search-overlay  ">
		    	<div class="search-overlay__top">
		    		<div class=""container>
		    		<i class="fa fa-search search-overlay__icon" area-hidden="true"></i>
		    		<input type="text" id="search-term" class="search-term" placeholder = "What Are You Looking For ?">
		    		<i class="fa fa-window-close search-overlay__close" area-hidden="true"></i>
		    		
		    		</div>
		    	</div>
		    	
		    	<div class="container">
		    		<div id="search-overlay-results">
		    			
		    		</div>
		    	</div>
		    </div>`);
	}
	
	
}

export default Search;
