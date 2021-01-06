import 'attendee.dart';
import 'mediator.dart';

void main() {
  var curly = Attendee("Paulo");
  var larry = Attendee("Malu");
  var moe = Attendee("Eu  prefiro não dizer meu nome");
  var mixer = List<Attendee>.from([curly, larry, moe]);
  var publicAnnouncementSystem = Mediator(mixer);

  publicAnnouncementSystem.update("Não coma minhas batatas!!");

  for (var person in mixer) {
    print("${person.name} disse: \"${person.state}\".");
  }
}
