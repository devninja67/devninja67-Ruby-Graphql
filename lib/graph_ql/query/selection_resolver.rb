class GraphQL::Query::SelectionResolver
  attr_reader :result

  RESOLUTION_STRATEGIES = {
    GraphQL::Nodes::Field =>          GraphQL::Query::FieldResolutionStrategy,
    GraphQL::Nodes::FragmentSpread => GraphQL::Query::FragmentSpreadResolutionStrategy,
    GraphQL::Nodes::InlineFragment => GraphQL::Query::InlineFragmentResolutionStrategy,
  }

  def initialize(target, type, selections, operation_resolver)
    @result = selections.reduce({}) do |memo, ast_field|
      strategy_class = RESOLUTION_STRATEGIES[ast_field.class]
      strategy = strategy_class.new(ast_field, type, target, operation_resolver)
      memo.merge(strategy.result)
    end
  end
end
