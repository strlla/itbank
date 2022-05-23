
const loginBtn=document.querySelector('.loginBtn')
const loginBtnMobile =document.querySelector('.loginBtnMobile')
const registerBtn =document.querySelector('.signUpBtn')    
const registerBtnMobile =document.querySelector('.signUpBtnMobile')    
const loginForm =document.querySelector('.loginForm')
const registerForm=document.querySelector('.registerForm')
const overlayRight=document.querySelector('.overlayRight')
const overlayLeft=document.querySelector('.overlayLeft')
const formsContainer = document.querySelector('.formsContainer')
const registerContainer = document.querySelector("#crearCuentaContainer")

document.addEventListener('click', e => {
    if (e.target === loginBtnMobile || e.target === loginBtn || e.target===registerBtn || e.target===registerBtnMobile) {
        registerForm.classList.toggle('active');
        overlayRight.classList.toggle('active')
        overlayLeft.classList.toggle('active')
        loginForm.classList.toggle('active')
        formsContainer.classList.toggle('formsContainer2')
        console.log("hola")

        if(e.target === loginBtnMobile || e.target == loginBtn){
            registerContainer.style.display = "none"
        } else {
            registerContainer.style.display = "flex"
        }

    }
});