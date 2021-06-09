/**
 * 무한 스크롤 기능
 */

 function infinit_scroll(ev) {//무한 스크롤 기능
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
        alert("you're at the bottom of the page");
    }
};