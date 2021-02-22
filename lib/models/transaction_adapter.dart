import 'package:hive/hive.dart';
import 'package:seeds/models/models.dart';

// Deprecated - we no longer use Hive with TransactionModel
// TODO: Remove this class
class TransactionAdapter extends TypeAdapter<TransactionModel> {
  final typeId = 2;

  @override
  TransactionModel read(BinaryReader reader) {
    var fields = [];
    reader.readByte();
    fields.add(reader.readString());
    reader.readByte();
    fields.add(reader.readString());
    reader.readByte();
    fields.add(reader.readString());
    reader.readByte();
    fields.add(reader.readString());
    reader.readByte();
    fields.add(reader.readString());
    reader.readByte();
    fields.add(reader.readString());
    reader.readByte();
    fields.add(reader.readInt());

    return TransactionModel(
      fields[0],
      fields[1],
      fields[2],
      fields[3],
      fields[4],
      fields[5],
      fields[6],
    );
  }

  @override
  void write(BinaryWriter writer, TransactionModel obj) {
    writer.writeByte(0);
    writer.writeString(obj.from);
    writer.writeByte(1);
    writer.writeString(obj.to);
    writer.writeByte(2);
    writer.writeString(obj.quantity);
    writer.writeByte(3);
    writer.writeString(obj.memo);
    writer.writeByte(4);
    writer.writeString(obj.timestamp);
    writer.writeByte(5);
    writer.writeString(obj.transactionId);
    writer.writeByte(6);
    writer.writeInt(obj.blockNumber);
  }
}
