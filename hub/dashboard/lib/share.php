    <div class="modal fade link-copy" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header"> 
            <h5 class="modal-title" id="mySmallModalLabel">Bagikan</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <input type="text" class="form-control form-control-sm" value="<?php echo $share; ?>" id="link-<?php echo $share; ?>" readonly> 
            <br/>
            <button data-toggle="tooltip" title="Link Copied" class="btn btn-primary btn-sm" type="button" onclick="copy_to_clipboard('link-<?php echo $share; ?>')"><i class="mdi mdi-content-copy"></i></button>
                <button class="btn btn-primary dropdown-toggle btn-sm" type="button" id="dropdownMenuButton2"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item has-icon" href="mailto:?subject=<?php echo $namaweb; ?>&body=<?php echo $share; ?>" target="_blank"><i class="far fa-envelope"></i> Email</a>
                        <a class="dropdown-item has-icon" href="http://www.facebook.com/sharer.php?u=<?php echo $share; ?>" target="_blank"><i class="fab fa-facebook-f"></i> Facebook</a>
                        <a class="dropdown-item has-icon" href="https://plus.google.com/share?url=<?php echo $share; ?>" target="_blank"><i class="fab fa-google-plus-g"></i> Google+</a>
                        <a class="dropdown-item has-icon" href="http://www.linkedin.com/shareArticle?mini=true&url=<?php echo $share; ?>" target="_blank"><i class="fab fa-linkedin-in"></i> LinkedIn</a>
                        <a class="dropdown-item has-icon" href="sms:?body=<?php echo $share; ?>" target="_blank"><i class="far fa-comment-dots"></i> SMS</a>
                        <a class="dropdown-item has-icon" href="https://telegram.me/share/url?url=<?php echo $share; ?>" target="_blank"><i class="fab fa-telegram-plane"></i> Telegram</a>
                        <a class="dropdown-item has-icon" href="http://twitter.com/home?status=<?php echo $share; ?>" target="_blank"><i class="fab fa-twitter"></i> Twitter Status</a>
                        <a class="dropdown-item has-icon" href="http://twitter.com/share?url=<?php echo $share; ?>" target="_blank"><i class="fab fa-twitter"></i> Twitter Url</a>
                        <a class="dropdown-item has-icon" href="whatsapp://send?text=<?php echo $share; ?>" target="_blank"><i class="fab fa-whatsapp"></i> WhatsApp</a>
                </div>
            </div>
        </div>
      </div>
    </div>