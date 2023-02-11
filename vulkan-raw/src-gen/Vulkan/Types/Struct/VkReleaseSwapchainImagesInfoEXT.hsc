{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Struct.VkReleaseSwapchainImagesInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkReleaseSwapchainImagesInfoEXT" #-} VkReleaseSwapchainImagesInfoEXT =
       VkReleaseSwapchainImagesInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchain :: VkSwapchainKHR -- ^ Swapchain for which images are being released
         , imageIndexCount :: #{type uint32_t} -- ^ Number of indices to release
         , pImageIndices :: Ptr #{type uint32_t} -- ^ Indices of which presentable images to release
         }

instance Storable VkReleaseSwapchainImagesInfoEXT where
  sizeOf    _ = #{size      struct VkReleaseSwapchainImagesInfoEXT}
  alignment _ = #{alignment struct VkReleaseSwapchainImagesInfoEXT}

  peek ptr = 
    VkReleaseSwapchainImagesInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchain" ptr)
       <*> peek (offset @"imageIndexCount" ptr)
       <*> peek (offset @"pImageIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchain" ptr val
    pokeField @"imageIndexCount" ptr val
    pokeField @"pImageIndices" ptr val

instance Offset "sType" VkReleaseSwapchainImagesInfoEXT where
  rawOffset = #{offset struct VkReleaseSwapchainImagesInfoEXT, sType}

instance Offset "pNext" VkReleaseSwapchainImagesInfoEXT where
  rawOffset = #{offset struct VkReleaseSwapchainImagesInfoEXT, pNext}

instance Offset "swapchain" VkReleaseSwapchainImagesInfoEXT where
  rawOffset = #{offset struct VkReleaseSwapchainImagesInfoEXT, swapchain}

instance Offset "imageIndexCount" VkReleaseSwapchainImagesInfoEXT where
  rawOffset = #{offset struct VkReleaseSwapchainImagesInfoEXT, imageIndexCount}

instance Offset "pImageIndices" VkReleaseSwapchainImagesInfoEXT where
  rawOffset = #{offset struct VkReleaseSwapchainImagesInfoEXT, pImageIndices}

#else

module Vulkan.Types.Struct.VkReleaseSwapchainImagesInfoEXT where

#endif