{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageSparseMemoryRequirementsInfo2" #-} VkImageSparseMemoryRequirementsInfo2 =
       VkImageSparseMemoryRequirementsInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         }

instance Storable VkImageSparseMemoryRequirementsInfo2 where
  sizeOf    _ = #{size      VkImageSparseMemoryRequirementsInfo2}
  alignment _ = #{alignment VkImageSparseMemoryRequirementsInfo2}

  peek ptr = 
    VkImageSparseMemoryRequirementsInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val

instance Offset "sType" VkImageSparseMemoryRequirementsInfo2 where
  rawOffset = #{offset VkImageSparseMemoryRequirementsInfo2, sType}

instance Offset "pNext" VkImageSparseMemoryRequirementsInfo2 where
  rawOffset = #{offset VkImageSparseMemoryRequirementsInfo2, pNext}

instance Offset "image" VkImageSparseMemoryRequirementsInfo2 where
  rawOffset = #{offset VkImageSparseMemoryRequirementsInfo2, image}

#else

module Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2 where

#endif