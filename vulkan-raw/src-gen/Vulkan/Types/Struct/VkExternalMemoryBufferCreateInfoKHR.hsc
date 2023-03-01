{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory

module Vulkan.Types.Struct.VkExternalMemoryBufferCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryBufferCreateInfoKHR" #-} VkExternalMemoryBufferCreateInfoKHR =
       VkExternalMemoryBufferCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExternalMemoryBufferCreateInfoKHR where
  sizeOf    _ = #{size      VkExternalMemoryBufferCreateInfoKHR}
  alignment _ = #{alignment VkExternalMemoryBufferCreateInfoKHR}

  peek ptr = 
    VkExternalMemoryBufferCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExternalMemoryBufferCreateInfoKHR where
  rawOffset = #{offset VkExternalMemoryBufferCreateInfoKHR, sType}

instance Offset "pNext" VkExternalMemoryBufferCreateInfoKHR where
  rawOffset = #{offset VkExternalMemoryBufferCreateInfoKHR, pNext}

instance Offset "handleTypes" VkExternalMemoryBufferCreateInfoKHR where
  rawOffset = #{offset VkExternalMemoryBufferCreateInfoKHR, handleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryBufferCreateInfoKHR where

#endif