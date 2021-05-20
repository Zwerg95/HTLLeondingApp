class User {
    constructor(lat, long, error = null) {
        this.lat = lat;
        this.long = long;
        this.error = error;
    }

    static Error(message) {
        return new User(null, null, message);
    }
}
function loadGeoLocation(success, error, loaded) {
    if (!sessionStorage.getItem('user')) {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(success, error);
        } else {
            error();
        }
    } else {
        loaded();
    }
}

function getUserLocation() {
    return new Promise((resolve) => {
        loadGeoLocation(
            (pos) => {
                let user = new User(pos.coords.latitude, pos.coords.longitude);
                sessionStorage.setItem('user', JSON.stringify(user));
                resolve(`Lat: ${user.lat}, Long: ${user.long}`);
            },
            () => {
                let user = User.Error('No Location Available');
                sessionStorage.setItem('user', JSON.stringify(user));
                resolve(user.error);
            },
            () => {
                let user = JSON.parse(sessionStorage.getItem('user'));
                resolve(
                    user.error
                        ? user.error
                        : `Lat: ${user.lat}, Long: ${user.long}`
                );
            }
        );
    });
}
