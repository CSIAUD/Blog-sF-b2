let agree = document.querySelector("#registration_form_agreeTerms");
let parent = agree.parentElement;
agree.addEventListener('change', () =>{
    swapClass(parent, "nm-convex-gray-200", "nm-convex-green-100")
})

let inputs = document.querySelectorAll("#form>div:not(:last-child)>input");
console.log(inputs);