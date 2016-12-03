

    <div class="collapse navbar-collapse js-navbar-collapse" id="navbar-collapsible">
      
      <ul class="nav navbar-nav">
        
      </ul>

      <form class="navbar-form">
        <div class="form-group" style="display:inline;">
          <div class="fill">
            <input class="form-control" ng-model="searchkeyword" type="text" id="search">
            <span class="btn btn-sm"><a href="productdisplay?=search{{searchkeyword}}"><i class="glyphicon glyphicon-search white" style="font-size: 20px;"></i></a></span>
          </div>
        </div>
      </form>
      
    </div>
    </nav>
	</div>
	
	   
  <script>
  $(document).ready(function() {

	$('#search').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "categoryName",
		delimiter: ",",
	   transformResult: function(response) {

		return {
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {

		      return { value: item.categoryName, data: item.categoryId };
		   })

		 };

            }

	 });

  });

</script>
    