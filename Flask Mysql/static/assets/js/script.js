// || Navigation Toggle //
var navigation = document.getElementById("navigation");
var navbar = document.getElementById("navbar");
function navOpen() {
  if (navbar.style.display == "") {
    navigation.style.visibility = "visible";
    navbar.style.display = "flex";
  } else {
    navigation.style.visibility = "hidden";
    navbar.style.display = "none";
  }
}
function navClose() {
  if (navbar.style.display == "flex") {
    navbar.style.display = "";
    navigation.style.visibility = "hidden";
  }
}

// || Sticky SearchBar
window.onscroll = function () {
  scrollDown();
};
// Get the SearchBar
searchBar = document.getElementById("search-bar");
let scrolltop = document.getElementById('scroll-top');

// Get the offset of searchBar
sticky = searchBar.offsetTop;
function scrollDown() {
  if (window.pageYOffset >= sticky) {
    searchBar.classList.add("sticky");
    searchBar.children[0].style.width = "70%";
    scrolltop.style.display = "block";
  } else {
    searchBar.children[0].style.width = "";
    searchBar.classList.remove("sticky");
    scrolltop.style.display = "none";
  }
}