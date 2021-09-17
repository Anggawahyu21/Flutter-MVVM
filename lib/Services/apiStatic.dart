import 'package:latihan_1/Models/explorer.dart';

class ApiStatic{
  static Future<List<Explorer>> getExplorer() async{
    List<Explorer> explorer=[];
    for (var i = 0; i < 10; i++) {
      explorer.add(
        Explorer(
          idPenjual: i, nama: "Nama Penjual"+i.toString(), telp: "+62"+i.toString(), foto: "Foto"+i.toString(), createdAt: "", updatedAt: ""
        )
      );
    }
    return explorer;
  }
}