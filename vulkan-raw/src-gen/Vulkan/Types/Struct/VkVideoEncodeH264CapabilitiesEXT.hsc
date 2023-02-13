{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264CapabilitiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeH264CapabilityFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH264InputModeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH264OutputModeFlagsEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264CapabilitiesEXT" #-} VkVideoEncodeH264CapabilitiesEXT =
       VkVideoEncodeH264CapabilitiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoEncodeH264CapabilityFlagsEXT
         , inputModeFlags :: VkVideoEncodeH264InputModeFlagsEXT
         , outputModeFlags :: VkVideoEncodeH264OutputModeFlagsEXT
         , maxPPictureL0ReferenceCount :: #{type uint8_t}
         , maxBPictureL0ReferenceCount :: #{type uint8_t}
         , maxL1ReferenceCount :: #{type uint8_t}
         , motionVectorsOverPicBoundariesFlag :: VkBool32
         , maxBytesPerPicDenom :: #{type uint32_t}
         , maxBitsPerMbDenom :: #{type uint32_t}
         , log2MaxMvLengthHorizontal :: #{type uint32_t}
         , log2MaxMvLengthVertical :: #{type uint32_t}
         }

instance Storable VkVideoEncodeH264CapabilitiesEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264CapabilitiesEXT}
  alignment _ = #{alignment VkVideoEncodeH264CapabilitiesEXT}

  peek ptr = 
    VkVideoEncodeH264CapabilitiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputModeFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"outputModeFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPPictureL0ReferenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBPictureL0ReferenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxL1ReferenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"motionVectorsOverPicBoundariesFlag" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBytesPerPicDenom" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBitsPerMbDenom" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"log2MaxMvLengthHorizontal" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"log2MaxMvLengthVertical" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"inputModeFlags" ptr val
    pokeField @"outputModeFlags" ptr val
    pokeField @"maxPPictureL0ReferenceCount" ptr val
    pokeField @"maxBPictureL0ReferenceCount" ptr val
    pokeField @"maxL1ReferenceCount" ptr val
    pokeField @"motionVectorsOverPicBoundariesFlag" ptr val
    pokeField @"maxBytesPerPicDenom" ptr val
    pokeField @"maxBitsPerMbDenom" ptr val
    pokeField @"log2MaxMvLengthHorizontal" ptr val
    pokeField @"log2MaxMvLengthVertical" ptr val

instance Offset "sType" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, sType}

instance Offset "pNext" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, pNext}

instance Offset "flags" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, flags}

instance Offset "inputModeFlags" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, inputModeFlags}

instance Offset "outputModeFlags" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, outputModeFlags}

instance Offset "maxPPictureL0ReferenceCount" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, maxPPictureL0ReferenceCount}

instance Offset "maxBPictureL0ReferenceCount" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, maxBPictureL0ReferenceCount}

instance Offset "maxL1ReferenceCount" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, maxL1ReferenceCount}

instance Offset "motionVectorsOverPicBoundariesFlag" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, motionVectorsOverPicBoundariesFlag}

instance Offset "maxBytesPerPicDenom" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, maxBytesPerPicDenom}

instance Offset "maxBitsPerMbDenom" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, maxBitsPerMbDenom}

instance Offset "log2MaxMvLengthHorizontal" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, log2MaxMvLengthHorizontal}

instance Offset "log2MaxMvLengthVertical" VkVideoEncodeH264CapabilitiesEXT where
  rawOffset = #{offset VkVideoEncodeH264CapabilitiesEXT, log2MaxMvLengthVertical}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264CapabilitiesEXT where

#endif