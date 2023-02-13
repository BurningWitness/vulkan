{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryImageCreateInfo" #-} VkExternalMemoryImageCreateInfo =
       VkExternalMemoryImageCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExternalMemoryImageCreateInfo where
  sizeOf    _ = #{size      VkExternalMemoryImageCreateInfo}
  alignment _ = #{alignment VkExternalMemoryImageCreateInfo}

  peek ptr = 
    VkExternalMemoryImageCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExternalMemoryImageCreateInfo where
  rawOffset = #{offset VkExternalMemoryImageCreateInfo, sType}

instance Offset "pNext" VkExternalMemoryImageCreateInfo where
  rawOffset = #{offset VkExternalMemoryImageCreateInfo, pNext}

instance Offset "handleTypes" VkExternalMemoryImageCreateInfo where
  rawOffset = #{offset VkExternalMemoryImageCreateInfo, handleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfo where

#endif