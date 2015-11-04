githubUserSearch.controller('GitUserSearchController', ['$resource', function($resource) {
 
        var searchResource = $resource('https://api.github.coom/search/users');

        var self = this;

        self.doSearch = function() {
            self.searchResult = searchResource.get(
                { q: self.searchTerm}
                );
        };
    }
]);