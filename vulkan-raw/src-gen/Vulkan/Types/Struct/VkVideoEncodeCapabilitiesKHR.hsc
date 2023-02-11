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
  sizeOf    _ = #{size      struct VkVideoEncodeCapabilitiesKHR}
  alignment _ = #{alignment struct VkVideoEncodeCapabilitiesKHR}

  peek ptr = 
    VkVideoEncodeCapabilitiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"rateControlModes" ptr)
       <*> peek (offset @"rateControlLayerCount" ptr)
       <*> peek (offset @"qualityLevelCount" ptr)
       <*> peek (offset @"inputImageDataFillAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"rateControlModes" ptr val
    pokeField @"rateControlLayerCount" ptr val
    pokeField @"qualityLevelCount" ptr val
    pokeField @"inputImageDataFillAlignment" ptr val

instance Offset "sType" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, sType}

instance Offset "pNext" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, pNext}

instance Offset "flags" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, flags}

instance Offset "rateControlModes" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, rateControlModes}

instance Offset "rateControlLayerCount" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, rateControlLayerCount}

instance Offset "qualityLevelCount" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, qualityLevelCount}

instance Offset "inputImageDataFillAlignment" VkVideoEncodeCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoEncodeCapabilitiesKHR, inputImageDataFillAlignment}

#else

module Vulkan.Types.Struct.VkVideoEncodeCapabilitiesKHR where

#endif