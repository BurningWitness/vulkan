{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_separate_stencil_usage

module Vulkan.Types.Struct.VkImageStencilUsageCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageStencilUsageCreateInfoEXT" #-} VkImageStencilUsageCreateInfoEXT =
       VkImageStencilUsageCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stencilUsage :: VkImageUsageFlags
         }

instance Storable VkImageStencilUsageCreateInfoEXT where
  sizeOf    _ = #{size      VkImageStencilUsageCreateInfoEXT}
  alignment _ = #{alignment VkImageStencilUsageCreateInfoEXT}

  peek ptr = 
    VkImageStencilUsageCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilUsage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stencilUsage" ptr val

instance Offset "sType" VkImageStencilUsageCreateInfoEXT where
  rawOffset = #{offset VkImageStencilUsageCreateInfoEXT, sType}

instance Offset "pNext" VkImageStencilUsageCreateInfoEXT where
  rawOffset = #{offset VkImageStencilUsageCreateInfoEXT, pNext}

instance Offset "stencilUsage" VkImageStencilUsageCreateInfoEXT where
  rawOffset = #{offset VkImageStencilUsageCreateInfoEXT, stencilUsage}

#else

module Vulkan.Types.Struct.VkImageStencilUsageCreateInfoEXT where

#endif