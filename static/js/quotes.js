// || Image Modal Script //
// Get the parent div of image and image
var galleryInfo = document.querySelectorAll(".gallery_2_info");
var img = document.getElementsByClassName("gallery_2_img");

// Get the modal, it's image, caption and author
var modal = document.getElementById("myModal");
var modalImg = document.getElementById("modal_img"); // image
var captionText = document.getElementById("caption"); // quote
var captionAuthor = document.getElementById("captionAuthor"); // author name
var profileurl = document.getElementById("link_name"); // url to unsplash photographer profile
var username = document.getElementById("link_name"); // username of photographer

// Set the quotes and authors in modal
for (var i = 0; i < galleryInfo.length; i++) {
  selecteddiv = galleryInfo[i];
  selecteddiv.onclick = function () {
    modal.classList.add("d-flex"); // display modal flex
    modalImg.src = this.parentNode.children[0].src; // get quote background image

    captionText.innerHTML = this.children[0].innerHTML; // get quote
    captionText.style.fontSize = this.children[0].style.fontSize; // set size of quotes
    captionAuthor.innerHTML = this.children[1].innerHTML; // get author of quote

    profileurl.attributes.href.value =
      this.parentNode.children[2].children[0].innerHTML +
      "?utm_source=quotesOceans&utm_medium=referral";
    username.innerHTML = this.parentNode.children[2].children[1].innerHTML;
  };
}

// Get the <span> element that closes the modal
// When the user clicks on <span> (x), close the modal
var span = document.getElementsByClassName("close")[0];
function modalClose() {
  modal.classList.remove("d-flex");
}

// || Font Size Assigner
function countWords(str) {
  // Count the words in the quote
  str = str.replace(/(^\s*)|(\s*$)/gi, "");
  str = str.replace(/[ ]{2,}/gi, " ");
  str = str.replace(/\n /, "\n");
  return str.split(" ").length;
}

// Get the quote element
function size(str) {
  count = countWords(str.innerHTML);
  // Conditions to resize quotes size
  if (count <= 10) {
    str.style.fontSize = "2.2rem";
    // " If Words are under 10"
  } else if (count > 10 && count <= 20) {
    str.style.fontSize = "1.8rem";
    // " If Words are between 10 - 20"
  } else if (count > 20 && count <= 25) {
    str.style.fontSize = "1.7rem";
    // " If Words are between 20 - 25"
  } else if (count > 25 && count <= 30) {
    str.style.fontSize = "1.5rem";
    // " If Words are between 25 - 30"
  } else if (count > 30 && count <= 35) {
    str.style.fontSize = "1.44rem";
    // " If Words are between 30 - 35"
  } else if (count > 35 && count <= 40) {
    str.style.fontSize = "1.35rem";
    // " If Words are between 35 - 40"
  } else if (count > 40) {
    str.style.fontSize = "1.3rem";
    // " If Words are greater than 40"
  }
}

// Call the text resize function of every quote
let quoteDiv = document.querySelectorAll(".gallery_2_item");
for (i = 0; i < quoteDiv.length; i++) {
  text = quoteDiv[i].children[1].children[0];
  size(text);
}