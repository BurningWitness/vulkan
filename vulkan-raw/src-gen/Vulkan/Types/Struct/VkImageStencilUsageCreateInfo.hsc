{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkImageStencilUsageCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageStencilUsageCreateInfo" #-} VkImageStencilUsageCreateInfo =
       VkImageStencilUsageCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stencilUsage :: VkImageUsageFlags
         }

instance Storable VkImageStencilUsageCreateInfo where
  sizeOf    _ = #{size      struct VkImageStencilUsageCreateInfo}
  alignment _ = #{alignment struct VkImageStencilUsageCreateInfo}

  peek ptr = 
    VkImageStencilUsageCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stencilUsage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stencilUsage" ptr val

instance Offset "sType" VkImageStencilUsageCreateInfo where
  rawOffset = #{offset struct VkImageStencilUsageCreateInfo, sType}

instance Offset "pNext" VkImageStencilUsageCreateInfo where
  rawOffset = #{offset struct VkImageStencilUsageCreateInfo, pNext}

instance Offset "stencilUsage" VkImageStencilUsageCreateInfo where
  rawOffset = #{offset struct VkImageStencilUsageCreateInfo, stencilUsage}

#else

module Vulkan.Types.Struct.VkImageStencilUsageCreateInfo where

#endif