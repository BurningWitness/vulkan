{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Struct.VkBindImagePlaneMemoryInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBindImagePlaneMemoryInfoKHR" #-} VkBindImagePlaneMemoryInfoKHR =
       VkBindImagePlaneMemoryInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , planeAspect :: VkImageAspectFlagBits
         }

instance Storable VkBindImagePlaneMemoryInfoKHR where
  sizeOf    _ = #{size      VkBindImagePlaneMemoryInfoKHR}
  alignment _ = #{alignment VkBindImagePlaneMemoryInfoKHR}

  peek ptr = 
    VkBindImagePlaneMemoryInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"planeAspect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"planeAspect" ptr val

instance Offset "sType" VkBindImagePlaneMemoryInfoKHR where
  rawOffset = #{offset VkBindImagePlaneMemoryInfoKHR, sType}

instance Offset "pNext" VkBindImagePlaneMemoryInfoKHR where
  rawOffset = #{offset VkBindImagePlaneMemoryInfoKHR, pNext}

instance Offset "planeAspect" VkBindImagePlaneMemoryInfoKHR where
  rawOffset = #{offset VkBindImagePlaneMemoryInfoKHR, planeAspect}

#else

module Vulkan.Types.Struct.VkBindImagePlaneMemoryInfoKHR where

#endif