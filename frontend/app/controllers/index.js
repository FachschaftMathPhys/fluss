import Controller from '@ember/controller';
import Flowchart from 'flowchart';
import Ember from 'ember';
export default Controller.extend({
  ta: 'st=>start: Start:>http://www.google.com[blank]\n' + 'e=>end:>http://www.google.com\n' + 'op1=>operation: My Operation\n' + 'op2=>operation: Stuff|current\n' + 'sub1=>subroutine: My Subroutine\n' + 'cond=>condition: Yes \n' + 'or No?\n:>http://www.google.com\n' + 'c2=>condition: Good idea|rejected\n' + 'io=>inputoutput: catch something...|request\n' + '\n' + 'st->op1(right)->cond\n' + 'cond(yes, right)->c2\n' + 'cond(no)->sub1(left)->op1\n' + 'c2(true)->io->e\n' + 'c2(false)->op2->e',
});
