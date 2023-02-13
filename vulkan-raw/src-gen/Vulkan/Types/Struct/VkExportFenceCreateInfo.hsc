{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExportFenceCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportFenceCreateInfo" #-} VkExportFenceCreateInfo =
       VkExportFenceCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalFenceHandleTypeFlags
         }

instance Storable VkExportFenceCreateInfo where
  sizeOf    _ = #{size      VkExportFenceCreateInfo}
  alignment _ = #{alignment VkExportFenceCreateInfo}

  peek ptr = 
    VkExportFenceCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportFenceCreateInfo where
  rawOffset = #{offset VkExportFenceCreateInfo, sType}

instance Offset "pNext" VkExportFenceCreateInfo where
  rawOffset = #{offset VkExportFenceCreateInfo, pNext}

instance Offset "handleTypes" VkExportFenceCreateInfo where
  rawOffset = #{offset VkExportFenceCreateInfo, handleTypes}

#else

module Vulkan.Types.Struct.VkExportFenceCreateInfo where

#endif