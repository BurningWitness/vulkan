{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_external_memory_host

module Vulkan.Types.Struct.VkImportMemoryHostPointerInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMemoryHostPointerInfoEXT" #-} VkImportMemoryHostPointerInfoEXT =
       VkImportMemoryHostPointerInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         , pHostPointer :: Ptr ()
         }

instance Storable VkImportMemoryHostPointerInfoEXT where
  sizeOf    _ = #{size      VkImportMemoryHostPointerInfoEXT}
  alignment _ = #{alignment VkImportMemoryHostPointerInfoEXT}

  peek ptr = 
    VkImportMemoryHostPointerInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"pHostPointer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val
    pokeField @"pHostPointer" ptr val

instance Offset "sType" VkImportMemoryHostPointerInfoEXT where
  rawOffset = #{offset VkImportMemoryHostPointerInfoEXT, sType}

instance Offset "pNext" VkImportMemoryHostPointerInfoEXT where
  rawOffset = #{offset VkImportMemoryHostPointerInfoEXT, pNext}

instance Offset "handleType" VkImportMemoryHostPointerInfoEXT where
  rawOffset = #{offset VkImportMemoryHostPointerInfoEXT, handleType}

instance Offset "pHostPointer" VkImportMemoryHostPointerInfoEXT where
  rawOffset = #{offset VkImportMemoryHostPointerInfoEXT, pHostPointer}

#else

module Vulkan.Types.Struct.VkImportMemoryHostPointerInfoEXT where

#endif