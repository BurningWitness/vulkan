{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Types.Struct.VkVideoEncodeCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeCapabilityFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeRateControlModeFlagsKHR
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeCapabilitiesKHR" #-} VkVideoEncodeCapabilitiesKHR =
       VkVideoEncodeCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoEncodeCapabilityFlagsKHR
         , rateControlModes :: VkVideoEncodeRateControlModeFlagsKHR
         , rateControlLayerCount :: #{type uint8_t}
         , qualityLevelCount :: #{type uint8_t}
         , inputImageDataFillAlignment :: VkExtent2D
         }

instance Storable VkVideoEncodeCapabilitiesKHR where
  sizeOf    _ = #{size      VkVideoEncodeCapabilitiesKHR}
  alignment _ = #{alignment VkVideoEncodeCapabilitiesKHR}

  peek ptr = 
    VkVideoEncodeCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rateControlModes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rateControlLayerCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qualityLevelCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputImageDataFillAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"rateControlModes" ptr val
    pokeField @"rateControlLayerCount" ptr val
    pokeField @"qualityLevelCount" ptr val
    pokeField @"inputImageDataFillAlignment" ptr val

instance Offset "sType" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, sType}

instance Offset "pNext" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, pNext}

instance Offset "flags" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, flags}

instance Offset "rateControlModes" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, rateControlModes}

instance Offset "rateControlLayerCount" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, rateControlLayerCount}

instance Offset "qualityLevelCount" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, qualityLevelCount}

instance Offset "inputImageDataFillAlignment" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoEncodeCapabilitiesKHR, inputImageDataFillAlignment}

#else

module Vulkan.Types.Struct.VkVideoEncodeCapabilitiesKHR where

#endif