{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageMemoryRequirementsInfo2" #-} VkImageMemoryRequirementsInfo2 =
       VkImageMemoryRequirementsInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         }

instance Storable VkImageMemoryRequirementsInfo2 where
  sizeOf    _ = #{size      struct VkImageMemoryRequirementsInfo2}
  alignment _ = #{alignment struct VkImageMemoryRequirementsInfo2}

  peek ptr = 
    VkImageMemoryRequirementsInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val

instance Offset "sType" VkImageMemoryRequirementsInfo2 where
  rawOffset = #{offset struct VkImageMemoryRequirementsInfo2, sType}

instance Offset "pNext" VkImageMemoryRequirementsInfo2 where
  rawOffset = #{offset struct VkImageMemoryRequirementsInfo2, pNext}

instance Offset "image" VkImageMemoryRequirementsInfo2 where
  rawOffset = #{offset struct VkImageMemoryRequirementsInfo2, image}

#else

module Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2 where

#endif