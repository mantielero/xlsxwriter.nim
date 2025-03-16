# nim --maxLoopIterationsVM:10000000000 c -d:futharkRebuild  create
# nim c --maxLoopIterationsVM:10000000000 c -d:futharkRebuild -d:nodeclguards -d:noopaquetypes create

import futhark,os


# importc:
#   outputPath currentSourcePath.parentDir / "fitz.nim"
#   path "/usr/include/"
#   "mupdf/fitz.h"

importc:
  outputPath currentSourcePath.parentDir / "xlsxwriter.nim"
  path "/usr/include/"
  path "/usr/include/xlsxwriter"
  "xlsxwriter.h"

#[
Then I had to add:
type
  struct_IO_marker = object
  struct_IO_codecvt = object
  struct_IO_wide_data = object
  compiler_builtin_va_list = object
  struct_locale_data = object
  struct_fz_font_context = object
  struct_fz_colorspace_context = object
  struct_fz_style_context = object
  struct_fz_tuning_context = object
  struct_fz_store = object
  struct_fz_glyph_cache = object
  struct_fz_document_handler_context = object
  struct_fz_archive_handler_context = object
  struct_fz_hash_table = object
  struct_fz_pool = object
  struct_fz_tree = object
  struct_fz_zip_writer = object
  struct_fz_xml = object
  struct_fz_icc_profile = object
  struct_fz_separations = object
  struct_fz_overprint = object
  struct_fz_jbig2_globals = object
  struct_fz_halftone = object
  struct_fz_compressed_image = object
  struct_fz_pixmap_image = object
  struct_fz_shade_color_cache = object
  struct_fz_display_list = object
  struct_fz_path = object
  struct_fz_glyph = object
  struct_fz_story = object
  struct_pdf_crypt = object
  struct_pdf_journal = object
  struct_pdf_obj = object
  struct_pdf_ocg_descriptor = object
  struct_pdf_annot = object
  struct_pdf_js = object
  struct_pdf_graft_map = object
  struct_pdf_locked_fields = object
  struct_cmap_splay = object
  struct_pdf_function = object
  struct_pdf_gstate = object
  typedef = object
  compiler_va_list_tag = object

  and comment lines:
  5587-5611

]#