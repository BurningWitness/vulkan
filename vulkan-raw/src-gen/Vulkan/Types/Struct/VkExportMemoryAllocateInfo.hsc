{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExportMemoryAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMemoryAllocateInfo" #-} VkExportMemoryAllocateInfo =
       VkExportMemoryAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExportMemoryAllocateInfo where
  sizeOf    _ = #{size      struct VkExportMemoryAllocateInfo}
  alignment _ = #{alignment struct VkExportMemoryAllocateInfo}

  peek ptr = 
    VkExportMemoryAllocateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportMemoryAllocateInfo where
  rawOffset = #{offset struct VkExportMemoryAllocateInfo, sType}

instance Offset "pNext" VkExportMemoryAllocateInfo where
  rawOffset = #{offset struct VkExportMemoryAllocateInfo, pNext}

instance Offset "handleTypes" VkExportMemoryAllocateInfo where
  rawOffset = #{offset struct VkExportMemoryAllocateInfo, handleTypes}

#else

module Vulkan.Types.Struct.VkExportMemoryAllocateInfo where

#endif