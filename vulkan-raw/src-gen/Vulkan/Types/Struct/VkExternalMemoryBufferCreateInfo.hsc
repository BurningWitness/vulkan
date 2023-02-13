{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExternalMemoryBufferCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryBufferCreateInfo" #-} VkExternalMemoryBufferCreateInfo =
       VkExternalMemoryBufferCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExternalMemoryBufferCreateInfo where
  sizeOf    _ = #{size      VkExternalMemoryBufferCreateInfo}
  alignment _ = #{alignment VkExternalMemoryBufferCreateInfo}

  peek ptr = 
    VkExternalMemoryBufferCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExternalMemoryBufferCreateInfo where
  rawOffset = #{offset VkExternalMemoryBufferCreateInfo, sType}

instance Offset "pNext" VkExternalMemoryBufferCreateInfo where
  rawOffset = #{offset VkExternalMemoryBufferCreateInfo, pNext}

instance Offset "handleTypes" VkExternalMemoryBufferCreateInfo where
  rawOffset = #{offset VkExternalMemoryBufferCreateInfo, handleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryBufferCreateInfo where

#endif