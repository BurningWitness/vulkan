{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Struct.VkImagePlaneMemoryRequirementsInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImagePlaneMemoryRequirementsInfoKHR" #-} VkImagePlaneMemoryRequirementsInfoKHR =
       VkImagePlaneMemoryRequirementsInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , planeAspect :: VkImageAspectFlagBits
         }

instance Storable VkImagePlaneMemoryRequirementsInfoKHR where
  sizeOf    _ = #{size      VkImagePlaneMemoryRequirementsInfoKHR}
  alignment _ = #{alignment VkImagePlaneMemoryRequirementsInfoKHR}

  peek ptr = 
    VkImagePlaneMemoryRequirementsInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"planeAspect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"planeAspect" ptr val

instance Offset "sType" VkImagePlaneMemoryRequirementsInfoKHR where
  rawOffset = #{offset VkImagePlaneMemoryRequirementsInfoKHR, sType}

instance Offset "pNext" VkImagePlaneMemoryRequirementsInfoKHR where
  rawOffset = #{offset VkImagePlaneMemoryRequirementsInfoKHR, pNext}

instance Offset "planeAspect" VkImagePlaneMemoryRequirementsInfoKHR where
  rawOffset = #{offset VkImagePlaneMemoryRequirementsInfoKHR, planeAspect}

#else

module Vulkan.Types.Struct.VkImagePlaneMemoryRequirementsInfoKHR where

#endif