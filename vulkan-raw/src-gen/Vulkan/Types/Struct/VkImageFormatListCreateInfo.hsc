{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkImageFormatListCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageFormatListCreateInfo" #-} VkImageFormatListCreateInfo =
       VkImageFormatListCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , viewFormatCount :: #{type uint32_t}
         , pViewFormats :: Ptr VkFormat
         }

instance Storable VkImageFormatListCreateInfo where
  sizeOf    _ = #{size      VkImageFormatListCreateInfo}
  alignment _ = #{alignment VkImageFormatListCreateInfo}

  peek ptr = 
    VkImageFormatListCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"viewFormatCount" ptr)
       <*> peek (offset @"pViewFormats" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"viewFormatCount" ptr val
    pokeField @"pViewFormats" ptr val

instance Offset "sType" VkImageFormatListCreateInfo where
  rawOffset = #{offset VkImageFormatListCreateInfo, sType}

instance Offset "pNext" VkImageFormatListCreateInfo where
  rawOffset = #{offset VkImageFormatListCreateInfo, pNext}

instance Offset "viewFormatCount" VkImageFormatListCreateInfo where
  rawOffset = #{offset VkImageFormatListCreateInfo, viewFormatCount}

instance Offset "pViewFormats" VkImageFormatListCreateInfo where
  rawOffset = #{offset VkImageFormatListCreateInfo, pViewFormats}

#else

module Vulkan.Types.Struct.VkImageFormatListCreateInfo where

#endif