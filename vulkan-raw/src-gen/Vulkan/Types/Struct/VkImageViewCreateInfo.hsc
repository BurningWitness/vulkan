{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageViewCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageViewCreateFlags
import Vulkan.Types.Enum.VkImageViewType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkComponentMapping
import Vulkan.Types.Struct.VkImageSubresourceRange



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewCreateInfo" #-} VkImageViewCreateInfo =
       VkImageViewCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkImageViewCreateFlags
         , image :: VkImage
         , viewType :: VkImageViewType
         , format :: VkFormat
         , components :: VkComponentMapping
         , subresourceRange :: VkImageSubresourceRange
         }

instance Storable VkImageViewCreateInfo where
  sizeOf    _ = #{size      struct VkImageViewCreateInfo}
  alignment _ = #{alignment struct VkImageViewCreateInfo}

  peek ptr = 
    VkImageViewCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"viewType" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"components" ptr)
       <*> peek (offset @"subresourceRange" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"image" ptr val
    pokeField @"viewType" ptr val
    pokeField @"format" ptr val
    pokeField @"components" ptr val
    pokeField @"subresourceRange" ptr val

instance Offset "sType" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, sType}

instance Offset "pNext" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, pNext}

instance Offset "flags" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, flags}

instance Offset "image" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, image}

instance Offset "viewType" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, viewType}

instance Offset "format" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, format}

instance Offset "components" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, components}

instance Offset "subresourceRange" VkImageViewCreateInfo where
  rawOffset = #{offset struct VkImageViewCreateInfo, subresourceRange}