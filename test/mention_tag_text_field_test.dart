import 'package:flutter_test/flutter_test.dart';
import 'package:mention_tag_text_field/mention_tag_text_field.dart';

void main() {
  test('onMention is called only when a mention start is in text', () {
    var stringsToTest = ['@man', 'man', '#man'];
    var callCount = 0;
    var myController = MentionTagTextEditingController();
    var myCustomTextField = MentionTagTextFormField(
      controller: myController,
      onMention: (p0) {
        print("==========> this ran on when $p0 was provided");
        callCount++;
      },
      mentionTagDecoration: const MentionTagDecoration(mentionStart: ['@']),
    );

    myCustomTextField.controller?.text = stringsToTest[0];
    expect(callCount, 1);
  });
}
