{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageMemoryRequirementsInfo2KHR" #-} VkImageMemoryRequirementsInfo2KHR =
       VkImageMemoryRequirementsInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         }

instance Storable VkImageMemoryRequirementsInfo2KHR where
  sizeOf    _ = #{size      VkImageMemoryRequirementsInfo2KHR}
  alignment _ = #{alignment VkImageMemoryRequirementsInfo2KHR}

  peek ptr = 
    VkImageMemoryRequirementsInfo2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val

instance Offset "sType" VkImageMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkImageMemoryRequirementsInfo2KHR, sType}

instance Offset "pNext" VkImageMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkImageMemoryRequirementsInfo2KHR, pNext}

instance Offset "image" VkImageMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkImageMemoryRequirementsInfo2KHR, image}

#else

module Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2KHR where

#endif