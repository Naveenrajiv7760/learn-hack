/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<e0f286af5dd6e1cb6c1f8b126428db94>>
 */
namespace Facebook\HHAST;
use namespace Facebook\TypeAssert;
use namespace HH\Lib\Dict;

<<__ConsistentConstruct>>
final class ContextAliasDeclaration extends Node {

  const string SYNTAX_KIND = 'context_alias_declaration';

  private ?Node $_attribute_spec;
  private ?Node $_keyword;
  private ?Node $_name;
  private ?Node $_generic_parameter;
  private ?Node $_as_constraint;
  private ?Node $_equal;
  private ?Node $_context;
  private ?Node $_semicolon;

  public function __construct(
    ?Node $attribute_spec,
    ?Node $keyword,
    ?Node $name,
    ?Node $generic_parameter,
    ?Node $as_constraint,
    ?Node $equal,
    ?Node $context,
    ?Node $semicolon,
    ?__Private\SourceRef $source_ref = null,
  ) {
    $this->_attribute_spec = $attribute_spec;
    $this->_keyword = $keyword;
    $this->_name = $name;
    $this->_generic_parameter = $generic_parameter;
    $this->_as_constraint = $as_constraint;
    $this->_equal = $equal;
    $this->_context = $context;
    $this->_semicolon = $semicolon;
    parent::__construct($source_ref);
  }

  <<__Override>>
  public static function fromJSON(
    dict<arraykey, mixed> $json,
    string $file,
    int $initial_offset,
    string $source,
    string $_type_hint,
  ): this {
    $offset = $initial_offset;
    $attribute_spec = Node::fromJSON(
      ($json['ctx_alias_attribute_spec'] ?? dict['kind' => 'missing'])
        as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $attribute_spec?->getWidth() ?? 0;
    $keyword = Node::fromJSON(
      ($json['ctx_alias_keyword'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $keyword?->getWidth() ?? 0;
    $name = Node::fromJSON(
      ($json['ctx_alias_name'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $name?->getWidth() ?? 0;
    $generic_parameter = Node::fromJSON(
      ($json['ctx_alias_generic_parameter'] ?? dict['kind' => 'missing'])
        as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $generic_parameter?->getWidth() ?? 0;
    $as_constraint = Node::fromJSON(
      ($json['ctx_alias_as_constraint'] ?? dict['kind' => 'missing'])
        as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $as_constraint?->getWidth() ?? 0;
    $equal = Node::fromJSON(
      ($json['ctx_alias_equal'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $equal?->getWidth() ?? 0;
    $context = Node::fromJSON(
      ($json['ctx_alias_context'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $context?->getWidth() ?? 0;
    $semicolon = Node::fromJSON(
      ($json['ctx_alias_semicolon'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $semicolon?->getWidth() ?? 0;
    $source_ref = shape(
      'file' => $file,
      'source' => $source,
      'offset' => $initial_offset,
      'width' => $offset - $initial_offset,
    );
    return new static(
      /* HH_IGNORE_ERROR[4110] */ $attribute_spec,
      /* HH_IGNORE_ERROR[4110] */ $keyword,
      /* HH_IGNORE_ERROR[4110] */ $name,
      /* HH_IGNORE_ERROR[4110] */ $generic_parameter,
      /* HH_IGNORE_ERROR[4110] */ $as_constraint,
      /* HH_IGNORE_ERROR[4110] */ $equal,
      /* HH_IGNORE_ERROR[4110] */ $context,
      /* HH_IGNORE_ERROR[4110] */ $semicolon,
      $source_ref,
    );
  }

  <<__Override>>
  public function getChildren(): dict<string, Node> {
    return dict[
      'attribute_spec' => $this->_attribute_spec,
      'keyword' => $this->_keyword,
      'name' => $this->_name,
      'generic_parameter' => $this->_generic_parameter,
      'as_constraint' => $this->_as_constraint,
      'equal' => $this->_equal,
      'context' => $this->_context,
      'semicolon' => $this->_semicolon,
    ]
      |> Dict\filter_nulls($$);
  }

  <<__Override>>
  public function rewriteChildren<Tret as ?Node>(
    (function(Node, vec<Node>): Tret) $rewriter,
    vec<Node> $parents = vec[],
  ): this {
    $parents[] = $this;
    $attribute_spec = $this->_attribute_spec === null
      ? null
      : $rewriter($this->_attribute_spec, $parents);
    $keyword = $this->_keyword === null
      ? null
      : $rewriter($this->_keyword, $parents);
    $name = $this->_name === null ? null : $rewriter($this->_name, $parents);
    $generic_parameter = $this->_generic_parameter === null
      ? null
      : $rewriter($this->_generic_parameter, $parents);
    $as_constraint = $this->_as_constraint === null
      ? null
      : $rewriter($this->_as_constraint, $parents);
    $equal = $this->_equal === null ? null : $rewriter($this->_equal, $parents);
    $context = $this->_context === null
      ? null
      : $rewriter($this->_context, $parents);
    $semicolon = $this->_semicolon === null
      ? null
      : $rewriter($this->_semicolon, $parents);
    if (
      $attribute_spec === $this->_attribute_spec &&
      $keyword === $this->_keyword &&
      $name === $this->_name &&
      $generic_parameter === $this->_generic_parameter &&
      $as_constraint === $this->_as_constraint &&
      $equal === $this->_equal &&
      $context === $this->_context &&
      $semicolon === $this->_semicolon
    ) {
      return $this;
    }
    return new static(
      $attribute_spec as ?Node,
      $keyword as ?Node,
      $name as ?Node,
      $generic_parameter as ?Node,
      $as_constraint as ?Node,
      $equal as ?Node,
      $context as ?Node,
      $semicolon as ?Node,
    );
  }

  public function getAttributeSpecUNTYPED(): ?Node {
    return $this->_attribute_spec;
  }

  public function withAttributeSpec(?Node $value): this {
    if ($value === $this->_attribute_spec) {
      return $this;
    }
    return new static(
      $value,
      $this->_keyword,
      $this->_name,
      $this->_generic_parameter,
      $this->_as_constraint,
      $this->_equal,
      $this->_context,
      $this->_semicolon,
    );
  }

  public function hasAttributeSpec(): bool {
    return $this->_attribute_spec !== null;
  }

  /**
   * @return unknown
   */
  public function getAttributeSpec(): ?Node {
    return $this->_attribute_spec;
  }

  /**
   * @return unknown
   */
  public function getAttributeSpecx(): Node {
    return TypeAssert\not_null($this->getAttributeSpec());
  }

  public function getKeywordUNTYPED(): ?Node {
    return $this->_keyword;
  }

  public function withKeyword(?Node $value): this {
    if ($value === $this->_keyword) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $value,
      $this->_name,
      $this->_generic_parameter,
      $this->_as_constraint,
      $this->_equal,
      $this->_context,
      $this->_semicolon,
    );
  }

  public function hasKeyword(): bool {
    return $this->_keyword !== null;
  }

  /**
   * @return unknown
   */
  public function getKeyword(): ?Node {
    return $this->_keyword;
  }

  /**
   * @return unknown
   */
  public function getKeywordx(): Node {
    return TypeAssert\not_null($this->getKeyword());
  }

  public function getNameUNTYPED(): ?Node {
    return $this->_name;
  }

  public function withName(?Node $value): this {
    if ($value === $this->_name) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $this->_keyword,
      $value,
      $this->_generic_parameter,
      $this->_as_constraint,
      $this->_equal,
      $this->_context,
      $this->_semicolon,
    );
  }

  public function hasName(): bool {
    return $this->_name !== null;
  }

  /**
   * @return unknown
   */
  public function getName(): ?Node {
    return $this->_name;
  }

  /**
   * @return unknown
   */
  public function getNamex(): Node {
    return TypeAssert\not_null($this->getName());
  }

  public function getGenericParameterUNTYPED(): ?Node {
    return $this->_generic_parameter;
  }

  public function withGenericParameter(?Node $value): this {
    if ($value === $this->_generic_parameter) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $this->_keyword,
      $this->_name,
      $value,
      $this->_as_constraint,
      $this->_equal,
      $this->_context,
      $this->_semicolon,
    );
  }

  public function hasGenericParameter(): bool {
    return $this->_generic_parameter !== null;
  }

  /**
   * @return unknown
   */
  public function getGenericParameter(): ?Node {
    return $this->_generic_parameter;
  }

  /**
   * @return unknown
   */
  public function getGenericParameterx(): Node {
    return TypeAssert\not_null($this->getGenericParameter());
  }

  public function getAsConstraintUNTYPED(): ?Node {
    return $this->_as_constraint;
  }

  public function withAsConstraint(?Node $value): this {
    if ($value === $this->_as_constraint) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $this->_keyword,
      $this->_name,
      $this->_generic_parameter,
      $value,
      $this->_equal,
      $this->_context,
      $this->_semicolon,
    );
  }

  public function hasAsConstraint(): bool {
    return $this->_as_constraint !== null;
  }

  /**
   * @return unknown
   */
  public function getAsConstraint(): ?Node {
    return $this->_as_constraint;
  }

  /**
   * @return unknown
   */
  public function getAsConstraintx(): Node {
    return TypeAssert\not_null($this->getAsConstraint());
  }

  public function getEqualUNTYPED(): ?Node {
    return $this->_equal;
  }

  public function withEqual(?Node $value): this {
    if ($value === $this->_equal) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $this->_keyword,
      $this->_name,
      $this->_generic_parameter,
      $this->_as_constraint,
      $value,
      $this->_context,
      $this->_semicolon,
    );
  }

  public function hasEqual(): bool {
    return $this->_equal !== null;
  }

  /**
   * @return unknown
   */
  public function getEqual(): ?Node {
    return $this->_equal;
  }

  /**
   * @return unknown
   */
  public function getEqualx(): Node {
    return TypeAssert\not_null($this->getEqual());
  }

  public function getContextUNTYPED(): ?Node {
    return $this->_context;
  }

  public function withContext(?Node $value): this {
    if ($value === $this->_context) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $this->_keyword,
      $this->_name,
      $this->_generic_parameter,
      $this->_as_constraint,
      $this->_equal,
      $value,
      $this->_semicolon,
    );
  }

  public function hasContext(): bool {
    return $this->_context !== null;
  }

  /**
   * @return unknown
   */
  public function getContext(): ?Node {
    return $this->_context;
  }

  /**
   * @return unknown
   */
  public function getContextx(): Node {
    return TypeAssert\not_null($this->getContext());
  }

  public function getSemicolonUNTYPED(): ?Node {
    return $this->_semicolon;
  }

  public function withSemicolon(?Node $value): this {
    if ($value === $this->_semicolon) {
      return $this;
    }
    return new static(
      $this->_attribute_spec,
      $this->_keyword,
      $this->_name,
      $this->_generic_parameter,
      $this->_as_constraint,
      $this->_equal,
      $this->_context,
      $value,
    );
  }

  public function hasSemicolon(): bool {
    return $this->_semicolon !== null;
  }

  /**
   * @return unknown
   */
  public function getSemicolon(): ?Node {
    return $this->_semicolon;
  }

  /**
   * @return unknown
   */
  public function getSemicolonx(): Node {
    return TypeAssert\not_null($this->getSemicolon());
  }
}
