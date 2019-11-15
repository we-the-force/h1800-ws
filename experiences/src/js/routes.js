// import HomePage from '../pages/experiences.f7.html';
import AboutPage from '../pages/about.f7.html';
import FormPage from '../pages/form.f7.html';
import Parks from '../pages/parks.f7.html';
import Experiences from '../pages/experiences.f7.html';
import Tours from '../pages/tours.f7.html';


import DynamicRoutePage from '../pages/dynamic-route.f7.html';
import RequestAndLoad from '../pages/request-and-load.f7.html';
import NotFoundPage from '../pages/404.f7.html';


var getCollection = function(collection) {
    var apiPath = 'http://hacienda1800.com/panel/api/collections/get/';
    var apiToken = '?token=8c4e6225dd7f133664f09e3f8dac1d'
    var collectionUrl = apiPath + collection + apiToken;
    return collectionUrl;

};

var routes = [{

        name: 'parks',
        path: '/parks/',
        id: 'parks',
        async: function(routeTo, routeFrom, resolve, reject) {
            // Requested route
            // Get external data and return template7 template
            this.app.request.json(getCollection('Parques'),
                function(data) {
                    resolve(

                        // How and what to load: template
                        {

                            component: Parks,
                        },
                        // Custom template context
                        {
                            context: {
                                parks: data.entries,
                            },
                        }
                    );
                });
        }


    },
    {
        name: 'tours',
        path: '/tours/',
        id: 'tours',

        async: function(routeTo, routeFrom, resolve, reject) {
            // Requested route
            // Get external data and return template7 template
            this.app.request.json(getCollection('Itinerario'),
                function(data) {
                    resolve(

                        // How and what to load: template
                        {

                            component: Tours,
                        },
                        // Custom template context
                        {
                            context: {
                                tours: data.entries,
                            },
                        }
                    );
                });
        }
    },



    /* {
      path: '/about/',
      component: AboutPage,
    },
    {
      path: '/form/',
      component: FormPage,
    }, */


    {
        path: '/dynamic-route/blog/:blogId/post/:postId/',
        component: DynamicRoutePage,
    },
    {
        name: 'experiences',
        path: '/experiences/',
        id: 'experiences',

        async: function(routeTo, routeFrom, resolve, reject) {
            // Requested route
            // Get external data and return template7 template
            this.app.request.json(getCollection('Experiencias'),
                function(data) {
                    resolve(

                        // How and what to load: template
                        {

                            component: Experiences,
                        },
                        // Custom template context
                        {
                            context: {
                                experiences: data.entries,
                            },
                        }
                    );
                });
        }
    },

    {
        path: '/request-and-load/user/:userId/',
        async: function(routeTo, routeFrom, resolve, reject) {
            // Router instance
            var router = this;

            // App instance
            var app = router.app;

            // Show Preloader
            app.preloader.show();

            // User ID from request
            var userId = routeTo.params.userId;

            // Simulate Ajax Request
            setTimeout(function() {
                // We got user data from request
                var user = {
                    firstName: 'Vladimir',
                    lastName: 'Kharlampidi',
                    about: 'Hello, i am creator of Framework7! Hope you like it!',
                    links: [{
                            title: 'Framework7 Website',
                            url: 'http://framework7.io',
                        },
                        {
                            title: 'Framework7 Forum',
                            url: 'http://forum.framework7.io',
                        },
                    ]
                };
                // Hide Preloader
                app.preloader.hide();

                // Resolve route to load page
                resolve({
                    component: RequestAndLoad,
                }, {
                    context: {
                        user: user,
                    }
                });
            }, 1000);
        },
    }, {
        path: '(.*)',
        component: NotFoundPage,
    },
];

export default routes;