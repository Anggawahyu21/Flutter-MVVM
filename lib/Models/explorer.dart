class Explorer{
  Explorer({
   required this.idPenjual,
   required this.nama,
   required this.telp,
   required this.foto,
   required this.createdAt,
   required this.updatedAt,
   });
   int idPenjual;
   String nama;
   String telp;
   String foto;
   String createdAt;
   String updatedAt;

factory Explorer.fromJson(Map<String, dynamic> Json) => Explorer(
  idPenjual: Json["id_penjual"],
  nama: Json["nama"].toString(),
  telp: Json["telp"].toString(),
  foto: Json["foto"].toString(),
  createdAt: Json["created_at"].toString(),
  updatedAt: Json["updated_at"].toString(),
);
}