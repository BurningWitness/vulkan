{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExportSemaphoreCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportSemaphoreCreateInfo" #-} VkExportSemaphoreCreateInfo =
       VkExportSemaphoreCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalSemaphoreHandleTypeFlags
         }

instance Storable VkExportSemaphoreCreateInfo where
  sizeOf    _ = #{size      VkExportSemaphoreCreateInfo}
  alignment _ = #{alignment VkExportSemaphoreCreateInfo}

  peek ptr = 
    VkExportSemaphoreCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportSemaphoreCreateInfo where
  rawOffset = #{offset VkExportSemaphoreCreateInfo, sType}

instance Offset "pNext" VkExportSemaphoreCreateInfo where
  rawOffset = #{offset VkExportSemaphoreCreateInfo, pNext}

instance Offset "handleTypes" VkExportSemaphoreCreateInfo where
  rawOffset = #{offset VkExportSemaphoreCreateInfo, handleTypes}

#else

module Vulkan.Types.Struct.VkExportSemaphoreCreateInfo where

#endif