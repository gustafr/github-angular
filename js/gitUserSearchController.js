githubUserSearch.controller('GitUserSearchController', ['$resource', function($resource, $searchFactory) {

        var self = this;

        self.doSearch = function() {
            Search.query(self.searchTerm)
                .then(function(response) {
                    self.searchResult = response.data;
                });
        };
    }
]);
