import $$ from 'dom7';
import Framework7 from 'framework7/framework7.esm.bundle.js';

// Import F7 Styles
import 'framework7/css/framework7.bundle.css';

// Import Icons and App Custom Styles
import '../css/icons.css';
import '../css/app.sass';

// Import Routes
import routes from './routes.js';

var app = new Framework7({
    root: '#app', // App root element

    name: 'Hacienda 1800', // App name
    theme: 'auto', // Automatic theme detection
    // App root data
    data: function() {
        return {
            user: {
                firstName: 'John',
                lastName: 'Doe',
            },

        };
    },
    // App root methods
    methods: {
        helloWorld: function() {
            app.dialog.alert('Hello World!');
        },
        getCollection: function(collection, params) {
            var apiPath = 'http://hacienda1800.com/panel/api/collections/get/';
            var apiToken = '?token=8c4e6225dd7f133664f09e3f8dac1d'
            var collectionUrl = apiPath + collection + apiToken + params;
            return collectionUrl;

        }
    },
    // App routes
    routes: routes,
});

// Login Screen Demo
$$('#my-login-screen .login-button').on('click', function() {
    var username = $$('#my-login-screen [name="username"]').val();
    var password = $$('#my-login-screen [name="password"]').val();

    // Close login screen
    app.loginScreen.close('#my-login-screen');

    // Alert username and password
    app.dialog.alert('Username: ' + username + '<br>Password: ' + password);
});

$$('#app .navbar .nav-tab').click(function(e) {
    if (!$$(this).hasClass('nav-tab-active')) {
        $$(this).parent().find('.nav-tab-active').removeClass('nav-tab-active');
        $$(this).addClass('nav-tab-active');
    }
});