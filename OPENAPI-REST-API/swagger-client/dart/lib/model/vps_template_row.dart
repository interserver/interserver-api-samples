part of swagger.api;

class VpsTemplateRow {
  
  String templateId = null;

  String templateType = null;

  String templateOs = null;

  String templateVersion = null;

  String templateBits = null;

  String templateFile = null;

  String templateAvailable = null;

  String templateName = null;

  String templateDir = null;

  VpsTemplateRow();

  @override
  String toString() {
    return 'VpsTemplateRow[templateId=$templateId, templateType=$templateType, templateOs=$templateOs, templateVersion=$templateVersion, templateBits=$templateBits, templateFile=$templateFile, templateAvailable=$templateAvailable, templateName=$templateName, templateDir=$templateDir, ]';
  }

  VpsTemplateRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    templateId = json['template_id'];
    templateType = json['template_type'];
    templateOs = json['template_os'];
    templateVersion = json['template_version'];
    templateBits = json['template_bits'];
    templateFile = json['template_file'];
    templateAvailable = json['template_available'];
    templateName = json['template_name'];
    templateDir = json['template_dir'];
  }

  Map<String, dynamic> toJson() {
    return {
      'template_id': templateId,
      'template_type': templateType,
      'template_os': templateOs,
      'template_version': templateVersion,
      'template_bits': templateBits,
      'template_file': templateFile,
      'template_available': templateAvailable,
      'template_name': templateName,
      'template_dir': templateDir
     };
  }

  static List<VpsTemplateRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTemplateRow>() : json.map((value) => new VpsTemplateRow.fromJson(value)).toList();
  }

  static Map<String, VpsTemplateRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTemplateRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTemplateRow.fromJson(value));
    }
    return map;
  }
}
