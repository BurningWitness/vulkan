{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkImageViewUsageCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewUsageCreateInfo" #-} VkImageViewUsageCreateInfo =
       VkImageViewUsageCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , usage :: VkImageUsageFlags
         }

instance Storable VkImageViewUsageCreateInfo where
  sizeOf    _ = #{size      VkImageViewUsageCreateInfo}
  alignment _ = #{alignment VkImageViewUsageCreateInfo}

  peek ptr = 
    VkImageViewUsageCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"usage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"usage" ptr val

instance Offset "sType" VkImageViewUsageCreateInfo where
  rawOffset = #{offset VkImageViewUsageCreateInfo, sType}

instance Offset "pNext" VkImageViewUsageCreateInfo where
  rawOffset = #{offset VkImageViewUsageCreateInfo, pNext}

instance Offset "usage" VkImageViewUsageCreateInfo where
  rawOffset = #{offset VkImageViewUsageCreateInfo, usage}

#else

module Vulkan.Types.Struct.VkImageViewUsageCreateInfo where

#endif