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


async function getUserLocation(user) {
    if (!user)
        user = await getUser();
    if (user.error && user.error.length > 0) {
        return user.error;
    }
    return `Lat: ${user.lat.toFixed(5)}, Long: ${user.long.toFixed(5)}`;
}

function getUser() {
    return new Promise((resolve) => {
        loadGeoLocation(
            (pos) => {
                let user = new User(pos.coords.latitude, pos.coords.longitude);
                sessionStorage.setItem('user', JSON.stringify(user));
                resolve(user);
            },
            () => {
                let user = User.Error('No Location Available');
                sessionStorage.setItem('user', JSON.stringify(user));
                resolve(user);
            },
            () => {
                let user = JSON.parse(sessionStorage.getItem('user'));
                resolve(user);
            }
        );
    });
}

if (window.location.href.includes("offies.html")) {
    window.onload = () => {
        getUserLocation().then(loc => {
            document.getElementById('location-message').innerText = loc;
        })
    };
}


function loadOwnLocation(){
    getUser().then((user) => {
        //Gesamte User Locatio
        console.log(user);
        //Länge
        let userLat = (Math.round(user.lat * 1000) / 1000);
        document.getElementById('standortx1').value = userLat;
        //Breite
        let userLong = (Math.round(user.long * 1000) / 1000);
        document.getElementById('standorty1').value = userLong;
        //Überprüfung der Ausgabe
        console.log(userLat);
        console.log(userLong);
      });
    
    }

function getDistance() {

    let lat1 = document.querySelector("#standortx1").value;
    console.log(lat1);

    let long1 = document.querySelector("#standorty1").value;
    console.log(long1);

    let lat2 = document.getElementById("standortx2").value;
    console.log(lat2);

    let long2 = document.querySelector("#standorty2").value;
    console.log(long2);

    const equatorLength = 40000;
    const lat1Length = Math.cos(lat1) * equatorLength;
    const lat2Length = Math.cos(lat2) * equatorLength;

    const latDiff = Math.abs(lat1 - lat2);
    const longDiff = Math.abs(long1 - long2);

    let dist1 = Math.sqrt(
        Math.pow((lat1Length / 360) * longDiff, 2) +
            Math.pow((equatorLength / 360) * latDiff, 2)
    );
    let dist2 = Math.sqrt(
        Math.pow((lat2Length / 360) * longDiff, 2) +
            Math.pow((equatorLength / 360) * latDiff, 2)
    );
    let dist = (dist1 + dist2) / 2;

    let last = (Math.round(dist * 1000) / 1000);

    console.log(last);
    document.getElementById('entfernung').innerHTML = last;

    return last;
}

