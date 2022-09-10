<form action="activation/request" method="POST">
    <input type="hidden" name="id_request" value="<?= $user->id ?>">
    <input type="hidden" name="activation_code" value="100">
    <div class="form-group mb-3">
        <label for="floatingInput"><i class="bi bi-envelope-fill"></i>Nama Lengkap</label>
        <input type="text" class="form-control rounded" id="floatingInput" placeholder="Masukkan Nama Lengkap" name="nama_aktivasi" required>
    </div>
    <div class="form-group mb-3">
        <label for="floatingInput"><i class="bi bi-envelope-fill"></i>Tujuan Daftar</label>
        <select type="text" class="select2 form-control" name="tujuan_daftar" id="tujuan_daftar" placeholder="Jalur Pendaftaran" value="" required/>
            <option value="">Pilih Jalur Pendaftaran</option>
            <option value="SDIQu">SDIQu</option>
            <option value="SMPIQu">SMPIQu</option>
            <option value="SMAIQu">SMAIQu</option>
        </select>
    </div>
    <div class="form-group mt-3">
    <button type="submit" class="btn btn-primary">Minta Aktivasi</button>
    </div>
</form>