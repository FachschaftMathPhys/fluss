import { moduleForModel, test } from 'ember-qunit';

moduleForModel('account', 'Unit | Model | account', {
  // Specify the other units that are required for this test.
  needs: ['model:user', 'model:disbursal-request']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
