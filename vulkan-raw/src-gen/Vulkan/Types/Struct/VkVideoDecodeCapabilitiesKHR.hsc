{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_queue

module Vulkan.Types.Struct.VkVideoDecodeCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoDecodeCapabilityFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeCapabilitiesKHR" #-} VkVideoDecodeCapabilitiesKHR =
       VkVideoDecodeCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoDecodeCapabilityFlagsKHR
         }

instance Storable VkVideoDecodeCapabilitiesKHR where
  sizeOf    _ = #{size      VkVideoDecodeCapabilitiesKHR}
  alignment _ = #{alignment VkVideoDecodeCapabilitiesKHR}

  peek ptr = 
    VkVideoDecodeCapabilitiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkVideoDecodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoDecodeCapabilitiesKHR, sType}

instance Offset "pNext" VkVideoDecodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoDecodeCapabilitiesKHR, pNext}

instance Offset "flags" VkVideoDecodeCapabilitiesKHR where
  rawOffset = #{offset VkVideoDecodeCapabilitiesKHR, flags}

#else

module Vulkan.Types.Struct.VkVideoDecodeCapabilitiesKHR where

#endif