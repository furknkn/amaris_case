import 'media.dart';

class NewsResponseModel {
  String? status;
  String? copyright;
  int? numResults;
  List<News>? results;

  NewsResponseModel({this.status, this.copyright, this.numResults, this.results});

  NewsResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    copyright = json['copyright'];
    numResults = json['num_results'];
    if (json['results'] != null) {
      results = <News>[];
      json['results'].forEach((v) {
        results!.add(News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['copyright'] = copyright;
    data['num_results'] = numResults;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class News {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  DateTime? publishedDate;
  String? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adxKeywords;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<String>? geoFacet;
  List<Media>? media;
  int? etaId;

  News(
      {this.uri,
      this.url,
      this.id,
      this.assetId,
      this.source,
      this.publishedDate,
      this.updated,
      this.section,
      this.subsection,
      this.nytdsection,
      this.adxKeywords,
      this.byline,
      this.type,
      this.title,
      this.abstract,
      this.desFacet,
      this.orgFacet,
      this.perFacet,
      this.geoFacet,
      this.media,
      this.etaId});

  News.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    url = json['url'];
    id = json['id'];
    assetId = json['asset_id'];
    source = json['source'];
    publishedDate = DateTime.tryParse(json['published_date']);
    updated = json['updated'];
    section = json['section'];
    subsection = json['subsection'];
    nytdsection = json['nytdsection'];
    adxKeywords = json['adx_keywords'];
    byline = json['byline'];
    type = json['type'];
    title = json['title'];
    abstract = json['abstract'];
    desFacet = json['des_facet'].cast<String>();
    orgFacet = json['org_facet'].cast<String>();
    perFacet = json['per_facet'].cast<String>();
    geoFacet = json['geo_facet'].cast<String>();
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    etaId = json['eta_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['url'] = url;
    data['id'] = id;
    data['asset_id'] = assetId;
    data['source'] = source;
    data['published_date'] = publishedDate;
    data['updated'] = updated;
    data['section'] = section;
    data['subsection'] = subsection;
    data['nytdsection'] = nytdsection;
    data['adx_keywords'] = adxKeywords;
    data['byline'] = byline;
    data['type'] = type;
    data['title'] = title;
    data['abstract'] = abstract;
    data['des_facet'] = desFacet;
    data['org_facet'] = orgFacet;
    data['per_facet'] = perFacet;
    data['geo_facet'] = geoFacet;
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    data['eta_id'] = etaId;
    return data;
  }
}
