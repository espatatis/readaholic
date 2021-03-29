// function openForm() {
//     document.getElementById("myForm").style.display = "block";

// }
  
//   function closeForm() {
//     document.getElementById("myForm").style.display = "none";

// }var modal = document.getElementById("myModal");
var modal = document.getElementById("myModal");
// Get the button that opens the modal
console.log(0)
var btn = document.getElementById("myBtn");
// console.log(btn);
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
if(btn != null){
  btn.onclick = function() {
    modal.style.display = "block";
  }
}

console.log(btn)

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
function myFunction(){
    console.log(4)
    if(document.getElementById("myDropdown").style.display == "block"){
      document.getElementById("myDropdown").style.display = "none";
    }
    else{
      document.getElementById("myDropdown").style.display = "block"
    }
 
}
// window.onclick = function(event) {
//   if (!event.target.matches('.dropbtn')) {
//     var dropdowns = document.getElementsByClassName("dropdown-content");
//     var i;
//     for (i = 0; i < dropdowns.length; i++) {
//       var openDropdown = dropdowns[i];
//       if (openDropdown.style.display="block") {
//         openDropdown.style.display="none";
//       }
//     }
//   }
// }
// $("#friend-form").submit(function (e) {
//   // preventing from page reload and default actions
//   e.preventDefault();
//   // serialize the data for sending the form data.
//   var serializedData = $(this).serialize();
//   // make POST ajax call
//   $.ajax({
//       type: 'POST',
//       url: "{{ url 'shop-home }}",
//       headers: {'X-CSRFToken': '{{ csrf_token }}'}, // for csrf token

//       data: serializedData,
//       success: function (response) {
//         console.log(data)

//           // on successfull creating object
//           // 1. clear the form.
//           $("#friend-form").trigger('reset');
//           // 2. focus to nickname input 
//           // $("#id_nick_name").focus();
//           $("#top").load("#top");
//           // display the newly friend to table.
//           // var instance = JSON.parse(response["instance"]);
//           // var fields = instance[0]["fields"];
//           // $("#my_friends tbody").prepend(
//           //     `<tr>
//           //     <td>${fields["nick_name"]||""}</td>
//           //     <td>${fields["first_name"]||""}</td>
//           //     <td>${fields["last_name"]||""}</td>
//           //     <td>${fields["likes"]||""}</td>
//           //     <td>${fields["dob"]||""}</td>
//           //     <td>${fields["lives_in"]||""}</td>
//           //     </tr>`
//           // )
//           console.log(data)
//       },
//       error: function (response) {
//           // alert the error if any error occured
//           alert(response["responseJSON"]["error"]);
//       }
//   })
// })

// const form = document.getElementById('c-form')

// const count = document.getElementById('id_count')


// const csrf = document.getElementsByName('csrfmiddlewaretoken')

// console.log(csrf)

// const url = ""

// function addtocart(){
//   // e.preventDefault();

//   const fd = new FormData()
//   fd.append('csrfmiddlewaretoken', csrf[0].value);
//   fd.append('count', count.value);

//   console.log("take")
//   $.ajax({
//       type: 'POST',
//       // method: 'POST',
//       url: url,
//       // headers: {'X-CSRFToken': '{{ csrf_token }}'}, // for csrf token
      
//       enctype: 'multipart/form-data',
//       data: fd,
//       success: function(response){
//           console.log("something")
//           const sText = `successfully saved ${response.name}`
//           handleAlerts('success', sText)
//           setTimeout(()=>{
//               count.value = ""
//           }, 3000)
//       },
//       error: function(error){

//           console.log("error")
//           handleAlerts('danger', 'ups..something went wrong')
//       },
//       cache: false,
//       contentType: false,
//       processData: false,
//   })
//   console.log("ajax done")
// }