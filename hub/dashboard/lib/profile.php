    <div class="modal fade check-profile" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header"> 
            <h5 class="modal-title" id="mySmallModalLabel">Foto Profil</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <center>
            <img src="<? echo $data_user['profile']; ?>" width="250px" height="250px">
            </center>
            </div>
        </div>
      </div>
    </div>