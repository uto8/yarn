// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
require('jquery')
require("@nathanvda/cocoon") 
global.toastr = require("toastr")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// $(document).on('turbolinks:load', function() {

//   const buildFileField = (index)=> {
//     const html = `<div data-index="${index}" class="js-file_group">
//                     <input class="js-file" type="file"
//                     name="user[images_attributes][${index}][file]"
//                     id="user_images_attributes_${index}_file"><br>
//                     <div class="js-remove">削除</div>
//                   </div>`;
//     return html;
//   }


//   let fileIndex = [1,2,3,4,5,6,7,8,9,10];

//   $('#image-box').on('change', '.js-file', function(e) {
    
//     $('#image-box').append(buildFileField(fileIndex[0]));
//     fileIndex.shift();
    
//     fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
//   });

//   $('#image-box').on('click', '.js-remove', function() {
//     $(this).parent().remove();
    
//     if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
//   });
// });
