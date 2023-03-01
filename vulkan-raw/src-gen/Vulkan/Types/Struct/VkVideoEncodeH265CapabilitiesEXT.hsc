{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265CapabilitiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeH265CapabilityFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265CtbSizeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265InputModeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265OutputModeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265TransformBlockSizeFlagsEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265CapabilitiesEXT" #-} VkVideoEncodeH265CapabilitiesEXT =
       VkVideoEncodeH265CapabilitiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoEncodeH265CapabilityFlagsEXT
         , inputModeFlags :: VkVideoEncodeH265InputModeFlagsEXT
         , outputModeFlags :: VkVideoEncodeH265OutputModeFlagsEXT
         , ctbSizes :: VkVideoEncodeH265CtbSizeFlagsEXT
         , transformBlockSizes :: VkVideoEncodeH265TransformBlockSizeFlagsEXT
         , maxPPictureL0ReferenceCount :: #{type uint8_t}
         , maxBPictureL0ReferenceCount :: #{type uint8_t}
         , maxL1ReferenceCount :: #{type uint8_t}
         , maxSubLayersCount :: #{type uint8_t}
         , minLog2MinLumaCodingBlockSizeMinus3 :: #{type uint8_t}
         , maxLog2MinLumaCodingBlockSizeMinus3 :: #{type uint8_t}
         , minLog2MinLumaTransformBlockSizeMinus2 :: #{type uint8_t}
         , maxLog2MinLumaTransformBlockSizeMinus2 :: #{type uint8_t}
         , minMaxTransformHierarchyDepthInter :: #{type uint8_t}
         , maxMaxTransformHierarchyDepthInter :: #{type uint8_t}
         , minMaxTransformHierarchyDepthIntra :: #{type uint8_t}
         , maxMaxTransformHierarchyDepthIntra :: #{type uint8_t}
         , maxDiffCuQpDeltaDepth :: #{type uint8_t}
         , minMaxNumMergeCand :: #{type uint8_t}
         , maxMaxNumMergeCand :: #{type uint8_t}
         }

instance Storable VkVideoEncodeH265CapabilitiesEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265CapabilitiesEXT}
  alignment _ = #{alignment VkVideoEncodeH265CapabilitiesEXT}

  peek ptr = 
    VkVideoEncodeH265CapabilitiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputModeFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"outputModeFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ctbSizes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transformBlockSizes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPPictureL0ReferenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBPictureL0ReferenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxL1ReferenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSubLayersCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minLog2MinLumaCodingBlockSizeMinus3" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxLog2MinLumaCodingBlockSizeMinus3" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minLog2MinLumaTransformBlockSizeMinus2" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxLog2MinLumaTransformBlockSizeMinus2" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minMaxTransformHierarchyDepthInter" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMaxTransformHierarchyDepthInter" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minMaxTransformHierarchyDepthIntra" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMaxTransformHierarchyDepthIntra" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDiffCuQpDeltaDepth" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minMaxNumMergeCand" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMaxNumMergeCand" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"inputModeFlags" ptr val
    pokeField @"outputModeFlags" ptr val
    pokeField @"ctbSizes" ptr val
    pokeField @"transformBlockSizes" ptr val
    pokeField @"maxPPictureL0ReferenceCount" ptr val
    pokeField @"maxBPictureL0ReferenceCount" ptr val
    pokeField @"maxL1ReferenceCount" ptr val
    pokeField @"maxSubLayersCount" ptr val
    pokeField @"minLog2MinLumaCodingBlockSizeMinus3" ptr val
    pokeField @"maxLog2MinLumaCodingBlockSizeMinus3" ptr val
    pokeField @"minLog2MinLumaTransformBlockSizeMinus2" ptr val
    pokeField @"maxLog2MinLumaTransformBlockSizeMinus2" ptr val
    pokeField @"minMaxTransformHierarchyDepthInter" ptr val
    pokeField @"maxMaxTransformHierarchyDepthInter" ptr val
    pokeField @"minMaxTransformHierarchyDepthIntra" ptr val
    pokeField @"maxMaxTransformHierarchyDepthIntra" ptr val
    pokeField @"maxDiffCuQpDeltaDepth" ptr val
    pokeField @"minMaxNumMergeCand" ptr val
    pokeField @"maxMaxNumMergeCand" ptr val

instance Offset "sType" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, sType}

instance Offset "pNext" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, pNext}

instance Offset "flags" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, flags}

instance Offset "inputModeFlags" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, inputModeFlags}

instance Offset "outputModeFlags" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, outputModeFlags}

instance Offset "ctbSizes" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, ctbSizes}

instance Offset "transformBlockSizes" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, transformBlockSizes}

instance Offset "maxPPictureL0ReferenceCount" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxPPictureL0ReferenceCount}

instance Offset "maxBPictureL0ReferenceCount" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxBPictureL0ReferenceCount}

instance Offset "maxL1ReferenceCount" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxL1ReferenceCount}

instance Offset "maxSubLayersCount" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxSubLayersCount}

instance Offset "minLog2MinLumaCodingBlockSizeMinus3" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, minLog2MinLumaCodingBlockSizeMinus3}

instance Offset "maxLog2MinLumaCodingBlockSizeMinus3" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxLog2MinLumaCodingBlockSizeMinus3}

instance Offset "minLog2MinLumaTransformBlockSizeMinus2" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, minLog2MinLumaTransformBlockSizeMinus2}

instance Offset "maxLog2MinLumaTransformBlockSizeMinus2" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxLog2MinLumaTransformBlockSizeMinus2}

instance Offset "minMaxTransformHierarchyDepthInter" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, minMaxTransformHierarchyDepthInter}

instance Offset "maxMaxTransformHierarchyDepthInter" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxMaxTransformHierarchyDepthInter}

instance Offset "minMaxTransformHierarchyDepthIntra" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, minMaxTransformHierarchyDepthIntra}

instance Offset "maxMaxTransformHierarchyDepthIntra" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxMaxTransformHierarchyDepthIntra}

instance Offset "maxDiffCuQpDeltaDepth" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxDiffCuQpDeltaDepth}

instance Offset "minMaxNumMergeCand" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, minMaxNumMergeCand}

instance Offset "maxMaxNumMergeCand" VkVideoEncodeH265CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH265CapabilitiesEXT, maxMaxNumMergeCand}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265CapabilitiesEXT where

#endif