/*const alertBox = document.getElementById('alert-box')
const form = document.getElementById('c-form')

const username = document.getElementById("id_username")
const email = document.getElementById("id_email")
const password1 = document.getElementById("id_passwrod1")
const password2 = document.getElementById("id_password2")

const csrf = document.getElementsByName('csrfmiddlewaretoken')
console.log(csrf)

form.addEventListener('submit', e=>{
    e.preventDefault()
    const fd = new FormData()
    fd.append('csrfmiddlewaretoken',csrf[0].value)
    fd.append('username',username.value)
    fd.append('email',email.value)
    fd.append('password1',password1.value)
    fd.append('password2',password2.value)

    $.ajax({
        type: 'POST',
        url: url,
        enctype: 'multipart/form-data',
        data: fd,
        success: function(response){
            console.log(response)
        },
        cache: false,
        contentType: false,
        processData: false,

    })
})


/*