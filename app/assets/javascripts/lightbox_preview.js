$(function() {
  var LightBoxPreview;
  new LightBoxPreview();
  return LightBoxPreview = (function() {
    class LightBoxPreview {
      constructor() {
        this.initLightbox = this.initLightbox.bind(this);
      }

      initLightbox() {}

    };

    LightBoxPreview.initLightbox();

    lightbox.init();

    return LightBoxPreview;

  }).call(this);
});
