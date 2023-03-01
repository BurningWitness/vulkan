{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence

module Vulkan.Types.Struct.VkExportFenceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportFenceCreateInfoKHR" #-} VkExportFenceCreateInfoKHR =
       VkExportFenceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalFenceHandleTypeFlags
         }

instance Storable VkExportFenceCreateInfoKHR where
  sizeOf    _ = #{size      VkExportFenceCreateInfoKHR}
  alignment _ = #{alignment VkExportFenceCreateInfoKHR}

  peek ptr = 
    VkExportFenceCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportFenceCreateInfoKHR where
  rawOffset = #{offset VkExportFenceCreateInfoKHR, sType}

instance Offset "pNext" VkExportFenceCreateInfoKHR where
  rawOffset = #{offset VkExportFenceCreateInfoKHR, pNext}

instance Offset "handleTypes" VkExportFenceCreateInfoKHR where
  rawOffset = #{offset VkExportFenceCreateInfoKHR, handleTypes}

#else

module Vulkan.Types.Struct.VkExportFenceCreateInfoKHR where

#endif