{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryImageCreateInfoKHR" #-} VkExternalMemoryImageCreateInfoKHR =
       VkExternalMemoryImageCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExternalMemoryImageCreateInfoKHR where
  sizeOf    _ = #{size      VkExternalMemoryImageCreateInfoKHR}
  alignment _ = #{alignment VkExternalMemoryImageCreateInfoKHR}

  peek ptr = 
    VkExternalMemoryImageCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExternalMemoryImageCreateInfoKHR where
  rawOffset = #{offset VkExternalMemoryImageCreateInfoKHR, sType}

instance Offset "pNext" VkExternalMemoryImageCreateInfoKHR where
  rawOffset = #{offset VkExternalMemoryImageCreateInfoKHR, pNext}

instance Offset "handleTypes" VkExternalMemoryImageCreateInfoKHR where
  rawOffset = #{offset VkExternalMemoryImageCreateInfoKHR, handleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoKHR where

#endif