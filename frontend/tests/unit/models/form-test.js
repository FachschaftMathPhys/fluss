import { moduleForModel, test } from 'ember-qunit';

moduleForModel('form', 'Unit | Model | form', {
  // Specify the other units that are required for this test.
  needs: ['model:selection']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
