{-# LANGUAGE EmptyDataDecls #-}

module Vulkan.Types.Protected where

import Data.Word
import Foreign.C.Types
import Foreign.Ptr



#if VK_USE_PLATFORM_FUCHSIA
data {-# CTYPE "vulkan/vulkan.h" "ZxHandleT" #-} ZxHandleT
#endif

#if VK_USE_PLATFORM_XCB_KHR
type XcbWindowT = CULong
#endif

#if VK_USE_PLATFORM_XCB_KHR
type XcbVisualidT = CULong
#endif

#if VK_USE_PLATFORM_XCB_KHR
data {-# CTYPE "vulkan/vulkan.h" "XcbConnectionT" #-} XcbConnectionT
#endif

#if VK_USE_PLATFORM_WAYLAND_KHR
data {-# CTYPE "vulkan/vulkan.h" "WlSurface" #-} WlSurface
#endif

#if VK_USE_PLATFORM_WAYLAND_KHR
data {-# CTYPE "vulkan/vulkan.h" "WlDisplay" #-} WlDisplay
#endif

#if VK_USE_PLATFORM_SCREEN_QNX
data {-# CTYPE "vulkan/vulkan.h" "ScreenWindow" #-} ScreenWindow
#endif

#if VK_USE_PLATFORM_SCREEN_QNX
data {-# CTYPE "vulkan/vulkan.h" "ScreenContext" #-} ScreenContext
#endif

#if VK_USE_PLATFORM_XLIB_KHR
type Window = Word64
#endif

#if VK_USE_PLATFORM_XLIB_KHR
type VisualID = Word64
#endif

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265VpsFlags" #-} StdVideoH265VpsFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265VideoParameterSet" #-} StdVideoH265VideoParameterSet

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265SubLayerHrdParameters" #-} StdVideoH265SubLayerHrdParameters

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265SpsVuiFlags" #-} StdVideoH265SpsVuiFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265SpsFlags" #-} StdVideoH265SpsFlags

type StdVideoH265SliceType = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265SequenceParameterSetVui" #-} StdVideoH265SequenceParameterSetVui

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265SequenceParameterSet" #-} StdVideoH265SequenceParameterSet

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265ScalingLists" #-} StdVideoH265ScalingLists

type StdVideoH265ProfileIdc = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265PredictorPaletteEntries" #-} StdVideoH265PredictorPaletteEntries

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265PpsFlags" #-} StdVideoH265PpsFlags

type StdVideoH265PictureType = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265PictureParameterSet" #-} StdVideoH265PictureParameterSet

type StdVideoH265LevelIdc = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265HrdParameters" #-} StdVideoH265HrdParameters

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265HrdFlags" #-} StdVideoH265HrdFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH265DecPicBufMgr" #-} StdVideoH265DecPicBufMgr

type StdVideoH264WeightedBipredIdc = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264SpsVuiFlags" #-} StdVideoH264SpsVuiFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264SpsFlags" #-} StdVideoH264SpsFlags

type StdVideoH264SliceType = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264SequenceParameterSetVui" #-} StdVideoH264SequenceParameterSetVui

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264SequenceParameterSet" #-} StdVideoH264SequenceParameterSet

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264ScalingLists" #-} StdVideoH264ScalingLists

type StdVideoH264ProfileIdc = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264PpsFlags" #-} StdVideoH264PpsFlags

type StdVideoH264PocType = CInt

type StdVideoH264PictureType = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264PictureParameterSet" #-} StdVideoH264PictureParameterSet

type StdVideoH264ModificationOfPicNumsIdc = CInt

type StdVideoH264MemMgmtControlOp = CInt

type StdVideoH264LevelIdc = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoH264HrdParameters" #-} StdVideoH264HrdParameters

type StdVideoH264DisableDeblockingFilterIdc = CInt

type StdVideoH264ChromaFormatIdc = CInt

type StdVideoH264CabacInitIdc = CInt

type StdVideoH264AspectRatioIdc = CInt

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265SliceSegmentHeaderFlags" #-} StdVideoEncodeH265SliceSegmentHeaderFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265SliceSegmentHeader" #-} StdVideoEncodeH265SliceSegmentHeader

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265ReferenceModifications" #-} StdVideoEncodeH265ReferenceModifications

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265ReferenceModificationFlags" #-} StdVideoEncodeH265ReferenceModificationFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265ReferenceInfoFlags" #-} StdVideoEncodeH265ReferenceInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265ReferenceInfo" #-} StdVideoEncodeH265ReferenceInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265PictureInfoFlags" #-} StdVideoEncodeH265PictureInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH265PictureInfo" #-} StdVideoEncodeH265PictureInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264SliceHeaderFlags" #-} StdVideoEncodeH264SliceHeaderFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264SliceHeader" #-} StdVideoEncodeH264SliceHeader

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264ReferenceInfoFlags" #-} StdVideoEncodeH264ReferenceInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264ReferenceInfo" #-} StdVideoEncodeH264ReferenceInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264RefPicMarkingEntry" #-} StdVideoEncodeH264RefPicMarkingEntry

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264RefMgmtFlags" #-} StdVideoEncodeH264RefMgmtFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264RefMemMgmtCtrlOperations" #-} StdVideoEncodeH264RefMemMgmtCtrlOperations

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264RefListModEntry" #-} StdVideoEncodeH264RefListModEntry

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264PictureInfoFlags" #-} StdVideoEncodeH264PictureInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoEncodeH264PictureInfo" #-} StdVideoEncodeH264PictureInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH265ReferenceInfoFlags" #-} StdVideoDecodeH265ReferenceInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH265ReferenceInfo" #-} StdVideoDecodeH265ReferenceInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH265PictureInfoFlags" #-} StdVideoDecodeH265PictureInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH265PictureInfo" #-} StdVideoDecodeH265PictureInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH264ReferenceInfoFlags" #-} StdVideoDecodeH264ReferenceInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH264ReferenceInfo" #-} StdVideoDecodeH264ReferenceInfo

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH264PictureInfoFlags" #-} StdVideoDecodeH264PictureInfoFlags

data {-# CTYPE "vulkan/vulkan.h" "StdVideoDecodeH264PictureInfo" #-} StdVideoDecodeH264PictureInfo

#if VK_USE_PLATFORM_WIN32_KHR
data {-# CTYPE "vulkan/vulkan.h" "SECURITY_ATTRIBUTES" #-} SECURITY_ATTRIBUTES
#endif

#if VK_USE_PLATFORM_XLIB_XRANDR_EXT
type RROutput = Word64
#endif

#if VK_USE_PLATFORM_WIN32_KHR
type LPCWSTR = Ptr CWchar
#endif

#if VK_USE_PLATFORM_DIRECTFB_EXT
data {-# CTYPE "vulkan/vulkan.h" "IDirectFBSurface" #-} IDirectFBSurface
#endif

#if VK_USE_PLATFORM_DIRECTFB_EXT
data {-# CTYPE "vulkan/vulkan.h" "IDirectFB" #-} IDirectFB
#endif

#if VK_USE_PLATFORM_WIN32_KHR
type HWND = Ptr ()
#endif

#if VK_USE_PLATFORM_WIN32_KHR
data {-# CTYPE "vulkan/vulkan.h" "HMONITOR" #-} HMONITOR
#endif

#if VK_USE_PLATFORM_WIN32_KHR
type HINSTANCE = Ptr ()
#endif

#if VK_USE_PLATFORM_WIN32_KHR
type HANDLE = Ptr ()
#endif

#if VK_USE_PLATFORM_GGP
data {-# CTYPE "vulkan/vulkan.h" "GgpStreamDescriptor" #-} GgpStreamDescriptor
#endif

#if VK_USE_PLATFORM_GGP
data {-# CTYPE "vulkan/vulkan.h" "GgpFrameToken" #-} GgpFrameToken
#endif

#if VK_USE_PLATFORM_XLIB_KHR
type Display = Ptr ()
#endif

#if VK_USE_PLATFORM_WIN32_KHR
type DWORD = Word32
#endif